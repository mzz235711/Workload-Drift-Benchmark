/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<150 AND p.CommentCount>5 AND p.CommentCount<29 AND u.DownVotes>685 AND u.DownVotes<1296 AND v.CreationDate>'2009-05-25 08:50:34'::timestamp AND v.CreationDate<'2011-05-13 18:35:15'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2011-02-21 04:32:39'::timestamp AND b.Date<'2013-02-16 13:23:13'::timestamp;

