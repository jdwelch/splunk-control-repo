plan project_alpha::plan_two (
  TargetSpec $nodes,
) {

  apply_prep($nodes)

  $reports = apply ($nodes) {
    notify {'hello plan two':}
  }
  $reports.each |$report| {
    notice("Node: ${report.target.name} Report: ${report.report}")
    run_task('splunk_hec::bolt_apply', 'splunk', report => $report.report, facts => $report.target.facts)
  }
}
