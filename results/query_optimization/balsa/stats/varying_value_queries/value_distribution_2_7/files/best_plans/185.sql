/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<91 AND p.CommentCount>2 AND p.CommentCount<44 AND u.DownVotes>199 AND u.DownVotes<782 AND v.CreationDate>'2012-12-01 10:25:57'::timestamp AND v.CreationDate<'2014-05-13 14:19:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-03-17 18:48:38'::timestamp AND b.Date<'2012-04-16 09:57:17'::timestamp;

