/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<29 AND p.CommentCount>5 AND p.CommentCount<41 AND u.DownVotes>143 AND u.DownVotes<1478 AND v.CreationDate>'2013-03-02 13:46:43'::timestamp AND v.CreationDate<'2014-08-25 15:13:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-07-28 05:58:53'::timestamp AND b.Date<'2012-06-12 08:56:53'::timestamp;

