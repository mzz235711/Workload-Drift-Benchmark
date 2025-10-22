/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<73 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>8 AND u.DownVotes<1728 AND v.CreationDate>'2009-03-09 23:45:28'::timestamp AND v.CreationDate<'2012-01-31 03:46:41'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-02-16 13:11:59'::timestamp AND b.Date<'2013-07-02 13:25:42'::timestamp;

