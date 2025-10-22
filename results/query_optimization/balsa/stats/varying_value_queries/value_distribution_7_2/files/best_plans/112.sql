/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<30 AND p.CommentCount>11 AND p.CommentCount<44 AND u.DownVotes>177 AND u.DownVotes<435 AND v.CreationDate>'2009-02-02 22:25:45'::timestamp AND v.CreationDate<'2014-09-13 07:55:35'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-02-21 13:24:58'::timestamp AND b.Date<'2014-05-07 17:30:08'::timestamp;

