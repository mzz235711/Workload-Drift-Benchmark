/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<129 AND p.CommentCount>13 AND p.CommentCount<37 AND u.DownVotes>728 AND u.DownVotes<1060 AND v.CreationDate>'2009-08-22 00:53:11'::timestamp AND v.CreationDate<'2013-03-09 03:36:56'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-08-08 06:33:00'::timestamp AND b.Date<'2012-11-02 00:23:33'::timestamp;

