/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=2 AND p.Score>=0 AND p.Score<=15 AND u.Reputation>=1 AND u.Reputation<=1396 AND u.UpVotes>=0 AND u.UpVotes<=31 AND u.CreationDate>='2010-10-04 08:24:10'::timestamp;

