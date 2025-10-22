/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.ViewCount<=1532 AND p.CreationDate>='2010-07-23 17:02:28'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes=0;

