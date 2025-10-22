/*+ HashJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2009-02-02 14:45:19'::timestamp AND v.VoteTypeId=5 AND u.Views<=15 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=62 AND u.CreationDate>='2010-07-19 19:16:54'::timestamp;

