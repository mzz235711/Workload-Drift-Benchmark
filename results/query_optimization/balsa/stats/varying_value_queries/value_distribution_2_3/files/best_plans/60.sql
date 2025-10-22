/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<70 AND p.CommentCount>7 AND p.CommentCount<21 AND u.DownVotes>36 AND u.DownVotes<1888 AND v.CreationDate>'2011-04-17 07:48:47'::timestamp AND v.CreationDate<'2011-07-15 17:20:03'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-12-12 01:55:03'::timestamp AND b.Date<'2014-08-02 13:28:41'::timestamp;

