/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<173 AND p.CommentCount>2 AND p.CommentCount<25 AND u.DownVotes>273 AND u.DownVotes<966 AND v.CreationDate>'2009-11-14 19:44:25'::timestamp AND v.CreationDate<'2014-06-18 12:09:22'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2012-04-12 17:22:42'::timestamp AND b.Date<'2014-03-08 15:46:30'::timestamp;

