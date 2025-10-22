/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-23 12:05:21'::timestamp AND u.Reputation<=366 AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=819 AND u.CreationDate>='2010-08-06 13:56:03'::timestamp;

