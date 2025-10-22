/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>103 AND p.Score<143 AND p.CommentCount>7 AND p.CommentCount<23 AND u.DownVotes>451 AND u.DownVotes<1752 AND v.CreationDate>'2012-12-02 20:31:46'::timestamp AND v.CreationDate<'2014-07-30 11:19:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-03-25 11:58:09'::timestamp AND b.Date<'2014-03-24 08:12:40'::timestamp;

