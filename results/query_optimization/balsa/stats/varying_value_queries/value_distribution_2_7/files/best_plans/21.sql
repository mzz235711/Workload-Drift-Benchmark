/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<148 AND p.CommentCount>8 AND p.CommentCount<39 AND u.DownVotes>54 AND u.DownVotes<1228 AND v.CreationDate>'2009-04-30 12:09:35'::timestamp AND v.CreationDate<'2011-03-23 09:24:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-08-01 17:56:52'::timestamp AND b.Date<'2013-01-20 11:27:23'::timestamp;

