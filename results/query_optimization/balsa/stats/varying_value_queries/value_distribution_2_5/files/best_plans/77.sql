/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<158 AND p.CommentCount>7 AND p.CommentCount<9 AND u.DownVotes>505 AND u.DownVotes<1507 AND v.CreationDate>'2011-05-08 11:15:23'::timestamp AND v.CreationDate<'2012-05-19 16:55:30'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2010-10-28 18:38:45'::timestamp AND b.Date<'2011-06-29 12:51:24'::timestamp;

