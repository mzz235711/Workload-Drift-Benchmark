/*+ MergeJoin(v b u p)
 MergeJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<5 AND p.CommentCount>1 AND p.CommentCount<39 AND u.DownVotes>437 AND u.DownVotes<840 AND v.CreationDate>'2012-08-05 05:00:08'::timestamp AND v.CreationDate<'2013-08-28 22:02:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-11-10 13:03:00'::timestamp AND b.Date<'2010-12-07 18:21:25'::timestamp;

