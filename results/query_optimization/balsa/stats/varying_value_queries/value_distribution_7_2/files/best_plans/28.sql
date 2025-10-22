/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<165 AND p.CommentCount>7 AND p.CommentCount<12 AND u.DownVotes>105 AND u.DownVotes<1832 AND v.CreationDate>'2009-06-17 23:40:49'::timestamp AND v.CreationDate<'2014-02-16 10:27:50'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-06-30 05:07:13'::timestamp AND b.Date<'2012-12-03 12:37:50'::timestamp;

