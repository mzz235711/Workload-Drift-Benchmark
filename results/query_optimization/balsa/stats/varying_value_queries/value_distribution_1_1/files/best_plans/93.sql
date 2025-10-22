/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<99 AND p.CommentCount>1 AND p.CommentCount<43 AND u.DownVotes>12 AND u.DownVotes<937 AND v.CreationDate>'2010-01-11 23:37:51'::timestamp AND v.CreationDate<'2010-12-24 15:08:44'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2012-06-02 10:34:01'::timestamp AND b.Date<'2013-06-26 23:27:03'::timestamp;

