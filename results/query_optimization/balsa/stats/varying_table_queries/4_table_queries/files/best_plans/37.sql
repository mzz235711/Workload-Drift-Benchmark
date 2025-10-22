/*+ HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading(((ph (u b)) v)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=4 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=26;

