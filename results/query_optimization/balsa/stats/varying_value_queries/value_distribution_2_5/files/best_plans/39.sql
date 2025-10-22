/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<149 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>89 AND u.DownVotes<813 AND v.CreationDate>'2011-02-14 18:17:15'::timestamp AND v.CreationDate<'2011-09-12 07:53:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-08-31 17:54:54'::timestamp AND b.Date<'2014-01-03 20:57:21'::timestamp;

