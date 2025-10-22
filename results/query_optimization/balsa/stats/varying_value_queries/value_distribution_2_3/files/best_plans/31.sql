/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<0 AND p.CommentCount>0 AND p.CommentCount<30 AND u.DownVotes>282 AND u.DownVotes<901 AND v.CreationDate>'2009-04-01 15:32:58'::timestamp AND v.CreationDate<'2012-02-02 14:05:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-04-22 09:05:32'::timestamp AND b.Date<'2012-08-27 21:27:05'::timestamp;

