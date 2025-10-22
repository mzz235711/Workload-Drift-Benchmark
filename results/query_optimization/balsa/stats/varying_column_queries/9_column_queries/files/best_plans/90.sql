/*+ MergeJoin(c u b ph v)
 HashJoin(u b ph v)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 IndexScan(v)
 Leading((c (((u b) ph) v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-13 18:06:57'::timestamp AND c.CreationDate<='2014-09-13 20:54:31'::timestamp AND ph.CreationDate>='2010-10-21 23:47:03'::timestamp AND ph.CreationDate<='2014-09-05 04:31:44'::timestamp AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.Reputation<=191 AND u.UpVotes<=7;

