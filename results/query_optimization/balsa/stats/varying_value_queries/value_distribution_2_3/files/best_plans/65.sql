/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<83 AND p.CommentCount>18 AND p.CommentCount<39 AND u.DownVotes>160 AND u.DownVotes<248 AND v.CreationDate>'2010-09-15 15:58:22'::timestamp AND v.CreationDate<'2012-07-22 21:53:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-11-06 10:48:50'::timestamp AND b.Date<'2012-10-31 10:44:20'::timestamp;

