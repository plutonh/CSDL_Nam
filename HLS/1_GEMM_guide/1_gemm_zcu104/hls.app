<project xmlns="com.autoesl.autopilot.project" top="mm" name="1_gemm_zcu104">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../gemm_tb.cc" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="gemm.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="gemm.cc" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

