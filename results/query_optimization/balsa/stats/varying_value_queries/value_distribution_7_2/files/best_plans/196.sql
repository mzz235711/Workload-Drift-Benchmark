/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<179 AND p.CommentCount>3 AND p.CommentCount<13 AND u.DownVotes>388 AND u.DownVotes<1630 AND v.CreationDate>'2011-12-01 00:29:35'::timestamp AND v.CreationDate<'2013-11-11 19:46:49'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2010-10-17 05:32:45'::timestamp AND b.Date<'2014-08-20 17:13:54'::timestamp;

