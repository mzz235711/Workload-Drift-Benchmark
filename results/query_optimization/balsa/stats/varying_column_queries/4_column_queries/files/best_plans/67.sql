/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=11533 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-25 14:53:50'::timestamp AND u.UpVotes=0;

