load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

def _hugo_site_impl(ctx):
    hugo = ctx.toolchains["@bazel_toolchain_hugo//:toolchain_type"].toolinfo

    build_file = ctx.actions.declare_file("{}.sh".format(ctx.attr.name))
    site = ctx.actions.declare_directory("{}.site".format(ctx.attr.name))
    outputs = ctx.actions.declare_file("{}.tar".format(ctx.attr.name))
    ctx.actions.write(
        output = build_file,
        content = """
tar -xf {archive} --directory {site}
{hugo_path} --quiet --minify -s {site} -d public
tar -cf {output} -C {site}/public .
        """.format(
            output = outputs.path,
            site = site.path,
            archive = ctx.file.archive.path,
            hugo_path = hugo.tool.path,
        ),
    )
    ctx.actions.run(
        inputs = [ctx.file.archive, hugo.tool],
        outputs = [outputs, site],
        mnemonic = "HugoSiteRender",
        progress_message = "Generating Hugo website",
        executable = build_file,
    )
    return [DefaultInfo(files = depset([outputs]))]

_hugo_site = rule(
    implementation = _hugo_site_impl,
    attrs = {
        "archive": attr.label(
            mandatory = True,
            allow_single_file = True,
        )
    },
    toolchains = [
        "@bazel_toolchain_hugo//:toolchain_type",
    ],
)

def hugo_site(name, srcs, **kwargs):
    pkg_tar(
        name = "%s.site" % name,
        srcs = srcs,
        strip_prefix = "./"
    )

    _hugo_site(
        name = name,
        archive = ":%s.site" % name,
        **kwargs,
    )
