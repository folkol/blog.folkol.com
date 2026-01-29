Jasmine-style API for 'criterion-like' benchmarks.
1. warmup + measure + calculate statistics + write down
2. use these files to generate report
	- maybe actually compatible so that we can use criterion.rs for rendering the stuff?


npx npm-packlist
npm publish --dry-run
npm publish --access=public (scoped packages are private by default, can also set private: true in package.json)


https://snyk.io/blog/best-practices-create-modern-npm-package/

https://docs.npmjs.com/creating-and-publishing-scoped-public-packages



https://bheisler.github.io/criterion.rs/book/analysis.html



create criterion instance
- let mut criterion = Criterion::default().configure_from_args();
- run test case (compare_fibonaccis(&mut criterion);)
	c.benchmark_group(name)
		- connection <-- remove
		- BenchmarkGroup::new(self, group_name)
	group.bench_with_input("Recursive", &20, |b, i| b.iter(|| fibonacci_slow(*i)));
		 self.run_bench(id.into_benchmark_id(), input, f);
		 let config = self.partial_config.to_complete(&self.criterion.config);
		 'create report context'
		 'create internal benchmark id'
		 id.ensure_directory_name_unique(&self.criterion.all_directories);
		 add new id as directory name
		 ensure title unique
		 is filtered?
		 let mut func = Function::new(f);
		 criterion.report.benchmark_start(&id, report_context);
		 	routine.sample(
 	        let wu = config.warm_up_time;
			let m_ns = config.measurement_time.as_nanos();
			println! warming up
			routine.warm_up(...)
			'initial guess for the mean execution time'
				let met = wu_elapsed as f64 / wu_iters as f64;
			let n = config.sample_size as u64;
			let actual_sampling_mode = ActualSamplingMode::Linear;
				if just one iteration, warn
			m_iters (guesstimated number of iterations)
			expected_ns ...
			// println benchmarking collecting samples in estimated ...
			self.bench <--
				create bencher
			        iters
		            .iter()
		            .map(|iters| {
		                b.iters = *iters;
		                (*f)(&mut b, black_box(parameter));
		                b.assert_iterated();
		                m.to_f64(&b.value)
		            })
		            .collect()
		criterion.report.analysis(&id, report_context);
		Sample::new (avg_times)
		Data::new(...)
		tukey::classify
		estimates
			stats
			point estimates
			if linear: regression, estimate slope and distribution
	group::drop
		self.criterion.report.group_separator();

- create summary: criterion.final_summary



- maybe create a suite that imports other test?



- individual reports are created when running the tests
- final report can be regenerated with an empty test:
	fn main() {
	    // benchmarks::compare_functions::fibonaccis();

	    ::criterion::Criterion::default()
	        .configure_from_args()
	        .final_summary();
	}



- iteration 1
	- support for .iter()
	- only data, use external report generation
- 



criterion.rs needs --bench, but needs -- --bench because cargo also recognizes that parameter...as_nanos



bench_function
	self.run_bench(id.into_benchmark_id(), &(), |b, _| f(b));

