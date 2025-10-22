/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<76 AND p.CommentCount>10 AND p.CommentCount<43 AND u.DownVotes>173 AND u.DownVotes<1851 AND v.CreationDate>'2009-12-16 10:26:45'::timestamp AND v.CreationDate<'2013-03-23 01:04:03'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-02-02 13:25:16'::timestamp AND b.Date<'2013-04-16 08:43:13'::timestamp;

