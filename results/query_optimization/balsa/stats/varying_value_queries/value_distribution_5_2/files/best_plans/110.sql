/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<48 AND p.CommentCount>19 AND p.CommentCount<23 AND u.DownVotes>22 AND u.DownVotes<865 AND v.CreationDate>'2010-05-11 10:07:22'::timestamp AND v.CreationDate<'2011-05-15 16:57:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-09-13 21:01:24'::timestamp AND b.Date<'2013-06-15 07:42:20'::timestamp;

