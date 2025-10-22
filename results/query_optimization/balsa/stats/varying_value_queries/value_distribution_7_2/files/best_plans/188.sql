/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<165 AND p.CommentCount>3 AND p.CommentCount<25 AND u.DownVotes>496 AND u.DownVotes<1670 AND v.CreationDate>'2012-11-20 04:33:03'::timestamp AND v.CreationDate<'2013-10-11 15:19:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-06-06 15:29:21'::timestamp AND b.Date<'2014-04-25 10:44:35'::timestamp;

