/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2009-12-06 00:00:00'::timestamp AND p.PostTypeId=2 AND p.CommentCount<=8 AND u.UpVotes>=0;

