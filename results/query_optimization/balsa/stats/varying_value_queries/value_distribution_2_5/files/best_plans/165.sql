/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<161 AND p.CommentCount>1 AND p.CommentCount<27 AND u.DownVotes>401 AND u.DownVotes<1130 AND v.CreationDate>'2012-05-10 21:15:01'::timestamp AND v.CreationDate<'2014-05-08 16:56:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-03-01 02:27:19'::timestamp AND b.Date<'2011-08-05 08:24:10'::timestamp;

