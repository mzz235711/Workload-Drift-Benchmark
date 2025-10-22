/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<169 AND p.CommentCount>1 AND p.CommentCount<25 AND u.DownVotes>469 AND u.DownVotes<1877 AND v.CreationDate>'2010-09-17 23:20:29'::timestamp AND v.CreationDate<'2013-10-29 19:18:32'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-04-25 10:13:54'::timestamp AND b.Date<'2011-12-03 17:16:41'::timestamp;

