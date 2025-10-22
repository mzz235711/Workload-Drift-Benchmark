/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<166 AND p.CommentCount>10 AND p.CommentCount<24 AND u.DownVotes>99 AND u.DownVotes<358 AND v.CreationDate>'2012-01-31 03:45:57'::timestamp AND v.CreationDate<'2012-12-30 18:03:28'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2014-08-02 10:18:29'::timestamp AND b.Date<'2014-08-23 10:17:42'::timestamp;

