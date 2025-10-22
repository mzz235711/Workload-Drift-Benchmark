/*+ MergeJoin(p u b v)
 NestLoop(p u b)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<157 AND p.CommentCount>7 AND p.CommentCount<11 AND u.DownVotes>1 AND u.DownVotes<474 AND v.CreationDate>'2009-12-26 19:37:24'::timestamp AND v.CreationDate<'2013-11-02 20:31:41'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2014-01-25 22:07:03'::timestamp AND b.Date<'2014-08-29 05:30:00'::timestamp;

