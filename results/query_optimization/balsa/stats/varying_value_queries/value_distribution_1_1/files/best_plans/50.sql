/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>78 AND p.Score<167 AND p.CommentCount>0 AND p.CommentCount<42 AND u.DownVotes>460 AND u.DownVotes<939 AND v.CreationDate>'2012-12-05 06:45:54'::timestamp AND v.CreationDate<'2013-11-07 07:34:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-04-02 23:23:21'::timestamp AND b.Date<'2014-07-09 01:43:40'::timestamp;

