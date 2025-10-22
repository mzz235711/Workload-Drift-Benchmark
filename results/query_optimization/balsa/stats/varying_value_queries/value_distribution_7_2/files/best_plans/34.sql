/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<169 AND p.CommentCount>8 AND p.CommentCount<11 AND u.DownVotes>680 AND u.DownVotes<1887 AND v.CreationDate>'2011-07-08 07:49:06'::timestamp AND v.CreationDate<'2013-05-14 23:18:31'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-07-31 08:05:16'::timestamp AND b.Date<'2013-02-15 00:57:58'::timestamp;

