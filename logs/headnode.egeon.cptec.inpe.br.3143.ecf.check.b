#5.8.4
defs_state MIGRATE state>:complete flag:message state_change:8830 modify_change:236 cal_count:28
edit ECF_MICRO '%' # server
edit ECF_HOME '/home/roberto.garcia/ecflow/logs' # server
edit ECF_JOB_CMD '%ECF_JOB% 1> %ECF_JOBOUT% 2>&1' # server
edit ECF_KILL_CMD 'kill -15 %ECF_RID%' # server
edit ECF_STATUS_CMD 'ps --pid %ECF_RID% -f > %ECF_JOB%.stat 2>&1' # server
edit ECF_URL_CMD '${BROWSER:=firefox} -new-tab %ECF_URL_BASE%/%ECF_URL%' # server
edit ECF_URL_BASE 'https://confluence.ecmwf.int' # server
edit ECF_URL 'display/ECFLOW/ecflow+home' # server
edit ECF_LOG '/home/roberto.garcia/ecflow/logs/headnode.egeon.cptec.inpe.br.3143.ecf.log' # server
edit ECF_INTERVAL '60' # server
edit ECF_LISTS 'headnode.egeon.cptec.inpe.br.3143.ecf.lists' # server
edit ECF_PASSWD 'headnode.egeon.cptec.inpe.br.3143.ecf.passwd' # server
edit ECF_CUSTOM_PASSWD 'headnode.egeon.cptec.inpe.br.3143.ecf.custom_passwd' # server
edit ECF_CHECK '/home/roberto.garcia/ecflow/logs/headnode.egeon.cptec.inpe.br.3143.ecf.check' # server
edit ECF_CHECKOLD '/home/roberto.garcia/ecflow/logs/headnode.egeon.cptec.inpe.br.3143.ecf.check.b' # server
edit ECF_CHECKINTERVAL '120' # server
edit ECF_CHECKMODE 'CHECK_ON_TIME' # server
edit ECF_TRIES '2' # server
edit ECF_VERSION '5.8.4' # server
edit ECF_PORT '3143' # server
edit ECF_HOST 'headnode.egeon.cptec.inpe.br' # server
edit ECF_CHECK_CMD 'ps --pid %ECF_RID% -f' # server
edit ECF_PID '1544698' # server
history /BAM_H MSG:[13:33:40 28.9.2022] --replace=/BAM_H BAM_H.def parent :roberto.garcia@headnode.egeon.cptec.inpe.br
history / MSG:[12:34:35 28.9.2022] --sync=0 5786 140 :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[12:37:46 28.9.2022] --sync=0 5814 140 :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[12:44:17 28.9.2022] --sync=0 6197 158 :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[12:47:07 28.9.2022] --sync=0 6227 158 :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[13:04:59 28.9.2022] --delete yes /BAM_H :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[13:05:09 28.9.2022] --load=BAM_H.def :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[13:05:09 28.9.2022] --begin=BAM_H :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[13:07:09 28.9.2022] --delete yes /BAM_H :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[13:07:19 28.9.2022] --load=BAM_H.def :roberto.garcia@headnode.egeon.cptec.inpe.brMSG:[13:07:19 28.9.2022] --begin=BAM_H :roberto.garcia@headnode.egeon.cptec.inpe.br
suite BAM_H # begun:1 state:complete dur:00:00:09 flag:message
edit ECF_HOME '/home/roberto.garcia/ecflow'
edit ECF_HOST 'headnode.egeon.cptec.inpe.br'
edit ECF_INCLUDE '/home/roberto.garcia/ecflow/includes'
edit ECF_TRIES '1'
calendar initTime:2022-Sep-28 16:33:40 suiteTime:2022-Sep-28 16:35:00 duration:00:01:20 initLocalTime:2022-Sep-28 16:33:40 lastTime:2022-Sep-28 16:35:00 calendarIncrement:00:00:53
family Avaliacao # state:complete dur:00:00:09
edit INIT_TIME '00'
edit MODO_AVAL 'OPER'
task verifica_saidas # try:1 state:complete dur:00:00:03 rt:00:00:02
edit SLEEP '1'
label info "Aguardando execucao ..." # "MODO OPER: BAM_H ok!"
meter complete 0 2 2 # 2
task verifica_scantec # try:1 state:complete dur:00:00:07 rt:00:00:03
trigger verifica_saidas == complete
edit SLEEP '1'
edit DIR_SCANTEC '/home/roberto.garcia/sfw/SCANTEC-2.0.0'
label info "Aguardando execucao ..." # "SCANTEC ok!"
meter complete 0 3 3 # 3
family SCANTEC_2.0.0 # state:complete dur:00:00:09
trigger verifica_scantec == complete
edit DIR_SCANTEC '/home/roberto.garcia/sfw/SCANTEC-2.0.0'
edit DIR_DATA '/home/roberto.garcia/sfw/SCANTEC-2.0.0'
label info ""
task run_scantec_ecflow_Am_Sul # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Am_Norte # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Tropicos # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Extratrop_S # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Extratrop_N # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Euro_N_Africa # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Polar_S # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Polar_N # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Asia # try:1 state:complete dur:00:00:09
task run_scantec_ecflow_Austr_N_Zel # try:1 state:complete dur:00:00:09
endfamily
endfamily
endsuite
# enddef
