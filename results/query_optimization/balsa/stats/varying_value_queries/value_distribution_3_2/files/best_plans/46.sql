/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<144 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>533 AND u.DownVotes<1565 AND v.CreationDate>'2011-04-06 13:30:31'::timestamp AND v.CreationDate<'2012-02-14 13:28:20'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2013-12-05 07:40:41'::timestamp AND b.Date<'2014-01-19 20:38:20'::timestamp;

