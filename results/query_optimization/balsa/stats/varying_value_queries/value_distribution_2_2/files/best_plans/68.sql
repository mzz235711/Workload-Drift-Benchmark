/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<15 AND p.CommentCount>5 AND p.CommentCount<37 AND u.DownVotes>650 AND u.DownVotes<1063 AND v.CreationDate>'2011-10-27 01:44:38'::timestamp AND v.CreationDate<'2014-06-26 17:20:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2010-11-20 04:03:41'::timestamp AND b.Date<'2014-09-13 03:52:33'::timestamp;

