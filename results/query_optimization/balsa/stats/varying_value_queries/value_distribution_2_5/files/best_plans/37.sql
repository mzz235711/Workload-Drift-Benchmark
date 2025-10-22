/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<27 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>256 AND u.DownVotes<943 AND v.CreationDate>'2013-09-09 13:59:46'::timestamp AND v.CreationDate<'2014-08-07 21:20:38'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2011-03-26 20:04:20'::timestamp AND b.Date<'2012-04-28 14:21:44'::timestamp;

