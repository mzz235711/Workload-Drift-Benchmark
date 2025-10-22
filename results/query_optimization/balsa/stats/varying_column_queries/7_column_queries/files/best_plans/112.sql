/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-12 03:29:35'::timestamp AND u.Reputation<=180 AND u.Views<=671 AND u.UpVotes>=0 AND u.UpVotes<=21 AND u.CreationDate>='2011-01-05 18:12:56'::timestamp;

