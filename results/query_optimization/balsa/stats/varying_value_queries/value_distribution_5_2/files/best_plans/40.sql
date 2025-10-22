/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<106 AND p.CommentCount>11 AND p.CommentCount<15 AND u.DownVotes>742 AND u.DownVotes<1186 AND v.CreationDate>'2010-12-29 02:47:46'::timestamp AND v.CreationDate<'2011-11-19 12:04:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-11-19 10:22:17'::timestamp AND b.Date<'2012-12-28 11:56:37'::timestamp;

