/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<93 AND p.CommentCount>15 AND p.CommentCount<31 AND u.DownVotes>107 AND u.DownVotes<708 AND v.CreationDate>'2010-07-03 01:04:28'::timestamp AND v.CreationDate<'2011-04-23 15:31:23'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2013-09-03 10:22:55'::timestamp AND b.Date<'2014-03-16 12:20:35'::timestamp;

