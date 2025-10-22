/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<167 AND p.CommentCount>12 AND p.CommentCount<19 AND u.DownVotes>602 AND u.DownVotes<1591 AND v.CreationDate>'2013-07-04 18:12:26'::timestamp AND v.CreationDate<'2014-08-28 04:31:39'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2010-12-25 08:27:35'::timestamp AND b.Date<'2013-04-04 08:20:45'::timestamp;

