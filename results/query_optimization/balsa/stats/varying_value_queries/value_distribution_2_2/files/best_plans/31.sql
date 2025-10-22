/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<77 AND p.CommentCount>3 AND p.CommentCount<39 AND u.DownVotes>293 AND u.DownVotes<458 AND v.CreationDate>'2009-07-31 17:25:42'::timestamp AND v.CreationDate<'2011-12-03 21:39:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-12-24 15:52:29'::timestamp AND b.Date<'2012-03-24 18:25:32'::timestamp;

