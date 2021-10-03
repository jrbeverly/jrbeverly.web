def _hugo_site_impl(ctx):
    hugo = ctx.toolchains["@bazel_toolchain_hugo//:toolchain_type"].toolinfo

    build_file = ctx.actions.declare_file("{}.sh".format(ctx.attr.name))
    site = ctx.actions.declare_directory("{}.site".format(ctx.attr.name))
    outputs = ctx.actions.declare_directory("{}.outputs".format(ctx.attr.name))
    ctx.actions.write(
        output = build_file,
        content = """
tar -xf {archive} --directory {site}
{hugo_path} --quiet --minify -s {site} -d public
mv -T {site}/public {outputs}
        """.format(
            outputs = outputs.path,
            site = site.path,
            archive = ctx.file.src.path,
            hugo_path = hugo.tool.path,
        ),
    )
    ctx.actions.run(
        inputs = [ctx.file.config, ctx.file.src, hugo.tool],
        outputs = [outputs, site],
        mnemonic = "HugoSiteRender",
        progress_message = "Generating Hugo website",
        executable = build_file,
    )
    return [DefaultInfo(files = depset([outputs]))]

hugo_site = rule(
    implementation = _hugo_site_impl,
    attrs = {
        "config": attr.label(
            mandatory = True,
            allow_single_file = True,
        ),
        "src": attr.label(
            mandatory = True,
            allow_single_file = True,
        )
    },
    toolchains = [
        "@bazel_toolchain_hugo//:toolchain_type",
    ],
)