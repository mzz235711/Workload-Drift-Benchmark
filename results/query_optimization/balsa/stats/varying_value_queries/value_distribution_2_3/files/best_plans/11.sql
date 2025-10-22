/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<173 AND p.CommentCount>4 AND p.CommentCount<40 AND u.DownVotes>99 AND u.DownVotes<521 AND v.CreationDate>'2009-09-19 20:34:49'::timestamp AND v.CreationDate<'2012-02-11 20:08:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-03-30 08:46:19'::timestamp AND b.Date<'2012-11-14 19:57:45'::timestamp;

