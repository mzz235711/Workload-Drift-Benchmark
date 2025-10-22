/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<79 AND p.CommentCount>1 AND p.CommentCount<25 AND u.DownVotes>584 AND u.DownVotes<936 AND v.CreationDate>'2010-05-28 18:34:25'::timestamp AND v.CreationDate<'2014-07-04 17:41:51'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-01-07 19:15:03'::timestamp AND b.Date<'2012-04-27 22:54:56'::timestamp;

