/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<167 AND p.CommentCount>12 AND p.CommentCount<34 AND u.DownVotes>463 AND u.DownVotes<1505 AND v.CreationDate>'2010-11-27 05:14:58'::timestamp AND v.CreationDate<'2014-06-26 23:45:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-07-07 00:07:11'::timestamp AND b.Date<'2013-11-24 16:05:24'::timestamp;

