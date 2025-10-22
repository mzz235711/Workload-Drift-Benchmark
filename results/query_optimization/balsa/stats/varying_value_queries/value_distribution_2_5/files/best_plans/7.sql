/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<112 AND p.CommentCount>3 AND p.CommentCount<36 AND u.DownVotes>632 AND u.DownVotes<867 AND v.CreationDate>'2014-01-21 02:18:58'::timestamp AND v.CreationDate<'2014-09-03 08:11:35'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-11-24 11:45:00'::timestamp AND b.Date<'2012-07-11 13:08:59'::timestamp;

