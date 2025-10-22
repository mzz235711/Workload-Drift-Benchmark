/*+ HashJoin(b v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<176 AND p.CommentCount>4 AND p.CommentCount<19 AND u.DownVotes>324 AND u.DownVotes<1828 AND v.CreationDate>'2009-04-30 06:54:57'::timestamp AND v.CreationDate<'2014-05-10 19:29:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-04-18 08:58:31'::timestamp AND b.Date<'2012-08-02 05:46:43'::timestamp;

