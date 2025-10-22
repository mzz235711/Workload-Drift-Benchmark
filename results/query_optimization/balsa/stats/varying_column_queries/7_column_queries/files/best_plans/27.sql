/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.CreationDate>='2010-07-28 05:55:31'::timestamp AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=13;

