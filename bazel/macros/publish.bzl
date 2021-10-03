def _cmd_copy_dirs(directory, dirs):
    cmd = "cp -r {dir}/. $BUILD_WORKSPACE_DIRECTORY/%s" % (directory)
    return "\n".join([cmd.format(dir = d.short_path) for d in dirs])

def _cmd_copy_files(directory, files):
    return "\n".join(["cp {} $BUILD_WORKSPACE_DIRECTORY/{}.".format(f.path, directory) for f in files])

def _publish_files_impl(ctx):
    ctx.actions.write(
        output = ctx.outputs.executable,
        content = """
rm -rf $BUILD_WORKSPACE_DIRECTORY/{output}
mkdir -p $BUILD_WORKSPACE_DIRECTORY/{output}
{cp_files}
{cp_dirs}
chmod -R 744 $BUILD_WORKSPACE_DIRECTORY/{output}
        """.format(
            output = ctx.attr.output,
            cp_files = _cmd_copy_files(ctx.attr.output, ctx.files.srcs),
            cp_dirs = _cmd_copy_dirs(ctx.attr.output, ctx.files.dirs),
        ),
    )
    return [DefaultInfo(
        runfiles = ctx.runfiles(ctx.files.srcs + ctx.files.dirs)
    )]

publish_files = rule(
    implementation = _publish_files_impl,
    attrs = {
        "output": attr.string(default = ""),
        "dirs": attr.label_list(
            allow_files = True,
        ),
        "srcs": attr.label_list(
            allow_files = True,
        )
    },
    executable = True,
)