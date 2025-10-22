/*+ HashJoin(ph b c u)
 HashJoin(b c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (b (c u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate>='2011-01-18 00:39:18'::timestamp AND ph.CreationDate<='2014-09-03 07:58:54'::timestamp AND u.UpVotes<=39 AND u.CreationDate>='2010-07-20 00:35:39'::timestamp AND u.CreationDate<='2014-08-30 11:24:01'::timestamp;

