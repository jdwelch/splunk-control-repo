plan project_alpha::plan_three(
  TargetSpec $nodes,
) {

  apply_prep($nodes)

  $reports = apply ($nodes) {
    notify {'hello plan three':}
  }
  $reports.each |$report| {
    notice("Node: ${report.target.name} Report: ${report.report}")
    run_task('splunk_hec::bolt_apply', 'splunk', report => $report.report, facts => $report.target.facts)
  }
}
