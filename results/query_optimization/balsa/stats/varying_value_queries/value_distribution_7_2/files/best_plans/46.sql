/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<51 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>463 AND u.DownVotes<1856 AND v.CreationDate>'2009-12-04 20:27:29'::timestamp AND v.CreationDate<'2012-07-23 17:18:08'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-02-29 12:43:29'::timestamp AND b.Date<'2012-09-13 09:42:58'::timestamp;

