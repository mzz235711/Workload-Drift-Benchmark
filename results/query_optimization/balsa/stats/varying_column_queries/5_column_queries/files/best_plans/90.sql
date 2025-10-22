/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate<='2014-09-13 00:34:12'::timestamp AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-23 16:36:50'::timestamp AND p.CreationDate<='2014-09-12 17:31:41'::timestamp AND u.UpVotes>=0;

