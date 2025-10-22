/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<87 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>117 AND u.DownVotes<1105 AND v.CreationDate>'2010-06-02 10:34:19'::timestamp AND v.CreationDate<'2012-07-16 12:11:30'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2013-03-08 03:35:33'::timestamp AND b.Date<'2013-09-23 14:00:13'::timestamp;

