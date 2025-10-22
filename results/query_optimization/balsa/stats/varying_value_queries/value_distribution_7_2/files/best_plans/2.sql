/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>65 AND p.Score<76 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>193 AND u.DownVotes<845 AND v.CreationDate>'2009-04-22 21:41:27'::timestamp AND v.CreationDate<'2012-01-27 00:38:08'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2012-08-05 01:18:45'::timestamp AND b.Date<'2014-04-20 07:25:56'::timestamp;

